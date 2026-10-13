let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  if startnum > endnum then []
  else
    let number = startnum in
    let digits = digits number in
    let rec contains_digit (n : int) (d : int) : bool =
      if n = 0 then true
      else
        match n mod d with
        | 0 -> contains_digit (n / d) d
        | _ -> false
    in
    let is_divisible = List.fold_right (&&) digits (contains_digit number) in
    if is_divisible then number :: divisible_by_digits (startnum + 1) endnum else divisible_by_digits (startnum + 1) endnum

and digits n =
  if n < 10 then [n]
  else digits (n / 10) @ [n mod 10]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
