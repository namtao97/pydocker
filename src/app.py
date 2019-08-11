import os


if __name__ == "__main__":

    user_id = "user1"
    file_name = "test"

    # run container
    os.system("bash ./scripts/start_container.sh %s" % user_id)

    # run code
    os.system("bash ./scripts/execute_code.sh %s %s" % (user_id, file_name))

    # stop container
    os.system("bash ./scripts/stop_container.sh %s" % user_id)


