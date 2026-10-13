(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
  let rec helper (stack : char list) (rest : char list) : bool =
    match rest with
    | [] -> stack = []
    | h::t -> 
       match stack with
       | [] -> if h = ')' then false else helper (h::stack) t
       | _ -> if h = '(' then helper (h::stack) t else helper (List.tl stack) t
  in helper [] (String.to_list exp);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:17: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let rec helper (stack : char list) (rest : char list) : bool =
    match rest with
    | [] -> stack = []
    | h::t -> 
       match stack with
       | [] -> if h = ')' then false else helper (h::stack) t
       | _ -> if h = '(' then helper (h::stack) t else helper (List.tl stack) t
  in helper [] (List.init (String.length exp) (String.get exp));;

