let rec validate (n : int) : bool =
  let rec aux (acc : int list) (n : int) : bool * int list =
    if n = 0 then (true, acc)
    else
      let digit = abs (n mod 10) in
      if digit < List.assoc digit acc then (false, acc)
      else aux (digit :: acc) (n / 10)
  in
  let (result, _) = aux [] n in
  result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
