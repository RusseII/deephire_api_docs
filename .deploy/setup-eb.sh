
set -x
set -e

<<<<<<< HEAD

mkdir ~/.aws
touch ~/.aws/config
chmod 600 ~/.aws/config
echo "[profile eb-cli]" > ~/.aws/config
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> ~/.aws/config
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> ~/.aws/config
=======
mkdir /home/ubuntu/
mkdir /home/ubuntu/.aws
touch /home/ubuntu/.aws/config
chmod 600 /home/ubuntu/.aws/config
echo "[profile eb-cli]" > /home/ubuntu/.aws/config
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> /home/ubuntu/.aws/config
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> /home/ubuntu/.aws/config
>>>>>>> 44529df93f16fbb1badf75673a1d9a6b83756985
