let rec count_no_of_ways (n : int) (k : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ ->
        let ways = Array.make (n + 1) 0 in
        ways.(0) <- 1;
        ways.(1) <- 1;
        for i = 2 to n do
            for j = 1 to i - 1 do
                ways.(i) <- ways.(i) + ways.(j) * ways.(i - j)
            done
        done;
        ways.(n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
