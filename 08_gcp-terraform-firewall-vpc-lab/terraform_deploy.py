import argparse
import os
import subprocess
import sys


def run_command(command):
    print(f"\nRunning: {' '.join(command)}")
    subprocess.run(command, check=True)


def main():
    parser = argparse.ArgumentParser(
        description="Validate, plan, and apply the Terraform configuration."
    )
    parser.add_argument(
        "--auto-approve",
        action="store_true",
        help="Apply without an interactive confirmation prompt.",
    )
    args = parser.parse_args()

    project_id = input("Enter your GCP Project ID: ").strip()
    if not project_id:
        print("Project ID cannot be empty.", file=sys.stderr)
        sys.exit(1)

    os.environ["GOOGLE_CLOUD_PROJECT"] = project_id

    try:
        run_command(["gcloud", "config", "set", "project", project_id])
        run_command(["terraform", "init"])
        run_command(["terraform", "fmt", "-check"])
        run_command(["terraform", "validate"])
        run_command(["terraform", "plan"])

        apply_command = ["terraform", "apply"]
        if args.auto_approve:
            apply_command.append("-auto-approve")
        run_command(apply_command)

    except subprocess.CalledProcessError as exc:
        print(f"Command failed with exit code {exc.returncode}.", file=sys.stderr)
        sys.exit(exc.returncode)


if __name__ == "__main__":
    main()
