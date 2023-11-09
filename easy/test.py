import argparse

print('sss')

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="DeepSpeed",
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument("-H",
                        "--hostfile",
                        type=str,
                        default="DLTS_HOSTFILE",
                        help="Hostfile path (in MPI style) that defines the "
                        "resource pool available to the job (e.g., "
                        "worker-0 slots=4)")
    parser.add_argument("--bi_to_rank",
                        help="Bind each rank to different cores of the host")

    parser.add_argument("user_script", type=str, help="User script to launch, followed by any required "
                        "arguments.")
    parser.add_argument("--bind_co_to_rank",
                        help="Bind each rank to different cores of the host")
    parser.add_argument('user_args', nargs=argparse.REMAINDER)

    parser.add_argument("u_script", type=str, help="User script to launch, followed by any required "
                        "arguments.")

    parser.add_argument("--bind_cores_to_rank",
                        help="Bind each rank to different cores of the host")
    pp = parser.parse_args()   
    print(pp)