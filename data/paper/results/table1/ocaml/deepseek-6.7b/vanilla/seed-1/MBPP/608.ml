let rec bell_Number (n : int) : int =
    let rec bell_triangle (n : int) (k : int) : int =
        if k = 0 || k == n then
            1
        else if k > n then
            bell_triangle n (k - 1)
        else
            bell_triangle (n - 1) (k - 1) + bell_triangle n (k - 1)
    in 
    bell_triangle n n;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
