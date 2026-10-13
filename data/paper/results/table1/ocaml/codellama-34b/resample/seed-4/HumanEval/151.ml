(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of numbers, return the sum of squares of the numbers *)
(*     in the list that are odd. Ignore numbers that are negative or not integers. *)
(*     >>> double_the_difference [1; 3; 2; 0] *)
(*     10 *)
(*     >>> double_the_difference [(-1); (-2); 0] *)
(*     0 *)
(*     >>> double_the_difference [9; (-2)] *)
(*     81 *)
(*     >>> double_the_difference [0] *)
(*     0 *)
(*     If the input list is empty, return 0. *)
let rec double_the_difference (lst : float list) : int = 
    (* base case: if the list is empty, return 0 *)
    if lst = [] then 0
    else
        (* if the head of the list is an odd integer, add its square to the result *)
        if (Float.of_string (lst.hd : float) : int) mod 2 = 1 && lst.hd >= 0 then
            (lst.hd : float) ** 2 + double_the_difference (lst.tl)
        else
            (* if the head of the list is not an odd integer, ignore it and continue to the next element *)
            double_the_difference (lst.tl)

