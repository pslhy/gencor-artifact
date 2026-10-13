let rec mul_even_odd (list1 : int list) : int = 
   let rec find_even_odd even odd = function
      | [] -> even * odd
      | h::t -> 
          if h mod 2 = 0 then find_even_odd (if even = -1 then h else even) odd t
          else find_even_odd even (if odd = -1 then h else odd) t
   in find_even_odd -1 -1 list1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
