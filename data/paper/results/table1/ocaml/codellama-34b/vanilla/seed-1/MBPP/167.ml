let rec next_power_of_2 (n : int) : int =
    let rec aux x y =
        if x = 1 then y
        else if x land 1 = 0 then 2 * (aux (x lsr 1) y)
        else 2 * (aux (x lsr 1) 1 lor y) in
    aux n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest power of 2 greater than or equal to n. *)
