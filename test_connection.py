import aim

def test_aim_connection():
    aim.Repo("aim://localhost:43800")

if __name__ == "__main__":
    test_aim_connection()
