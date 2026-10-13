let rec count_no_of_ways (n : int) (k : int) : int =
    match n with
    | 0 | 1 -> k
    | _ ->
        k * (
            let prev_ways = count_no_of_ways (n-1) k in
            prev_ways + prev_ways
        )

(* the test function *)
let test n k =
    if count_no_of_ways n k = 1 then
        print_endline "The number of ways of painting the fence such that at most 2 adjacent posts have the same color is 1"
    else
        print_endline "The number of ways of painting the fence such that at most 2 adjacent posts have the same color is greater than 1"

(* Test Cases *)
let () =
    test 1 2;
    test 2 2;
    test 3 3;
    test 4 4;
    test 5 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
