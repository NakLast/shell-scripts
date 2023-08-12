# This set up using for environment.
# Step by step setup project python Django restframework.

# 1.Update system packages.
sudo apt update && sudo apt upgrade

# 2.Check python installing.
python3 --version

# 3.Install pip and venv.
sudo apt install python3-pip python3-venv -y

# 4.Create new project directory.
mkdir `${your_new_project}`
cd `${your_new_project}`

# 5.Set up new environment.
python3 -m venv .env

# 6.Activate the new environment.
source .env/bin/activate

# 7.Install Django.
pip install django

# 8.Verify installation.
django-admin --version
