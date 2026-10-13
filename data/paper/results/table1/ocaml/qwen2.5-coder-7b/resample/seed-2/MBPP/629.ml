(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
let rec split (list : int list) : int list = 
    match list with 
    | [] -> []
    | h::t -> h :: split t

let even_number c residual_list =
    match residual_list with
    | [] -> []
    | h::t -> if (h mod 2 = 0) then h::(even_number (c-1) t) else even_number (c-1) t

let的答案是没有完成的，因为最终答案是
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:5: Illegal character (\154) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list = 
    match list with 
    | [] -> []
    | h::t -> h :: split t

let even_number c residual_list =
    match residual_list with
    | [] -> []
    | h::t -> if (h mod 2 = 0) then h::(even_number (c-1) t) else even_number (c-1) t

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:41: Unbound value "even_number" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 6 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list = 
    match list with 
    | [] -> []
    | h::t -> h :: split t

let rec even_number c residual_list =
    match residual_list with
    | [] -> []
    | h::t -> if (h mod 2 = 0) then h::(even_number (c-1) t) else even_number (c-1) t

