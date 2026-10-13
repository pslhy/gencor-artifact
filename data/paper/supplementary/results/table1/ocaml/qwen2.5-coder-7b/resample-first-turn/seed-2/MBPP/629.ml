let rec split (list : int list) : int list = 
    match list with 
    | [] -> []
    | h::t -> h :: split t

let even_number c residual_list =
    match residual_list with
    | [] -> []
    | h::t -> if (h mod 2 = 0) then h::(even_number (c-1) t) else even_number (c-1) t

let的答案是没有完成的，因为最终答案是

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
