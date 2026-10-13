let rec mul_even_odd (list1 : int list) : int =
  let rec aux xList accEven accOdd =
    match xList with
    | [] -> accEven, accOdd
    | h :: t -> if h mod 2 = 0 then aux t (accEven * h) accOdd
                 else aux t accEven (accOdd * h)
  in
  let even, odd = aux list1 1 1 in
  if even mod 2 = 0 && odd mod 2 = 1 then even * odd
  else 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
