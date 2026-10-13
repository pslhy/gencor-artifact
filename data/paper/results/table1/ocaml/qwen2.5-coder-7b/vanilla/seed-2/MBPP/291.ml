let rec count_no_of_ways (n : int) (k : int) : int = 
    let mod_val = 1000000007 in
    if n = 0 then 0
    else if n = 1 then k
    else if n = 2 then (k * k) mod mod_val
    else 
        let dp = Array.make (n + 1) 0 in
        dp.(1) <- k;
        dp.(2) <- (k * k) mod mod_val;
        for i = 3 to n do
            dp.(i) <- ((k - 1) * (dp.(i - 1) + dp.(i - 2))) mod mod_val
        done;
        dp.(n)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
