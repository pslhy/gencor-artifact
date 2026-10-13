let rec mul_even_odd (list1 : int list) : int = 
  let rec find_even acc = function
    | [] -> acc
    | h::t ->
      if h mod 2 = 0 then h * find_even acc t else find_even acc t
  and find_odd acc = function
    | [] -> acc
    | h::t ->
      if h mod 2 <> 0 then h * find_odd acc t else find_odd acc t
  in
    find_even 1 list1 * find_odd 1 list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
