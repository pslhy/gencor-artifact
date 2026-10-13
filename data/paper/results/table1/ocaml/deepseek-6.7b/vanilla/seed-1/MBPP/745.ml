let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if num mod h = 0 then divisible_by_digits_helper num t
               else false
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else range_helper startnum (endnum - 1) (if divisible_by_digits_helper startnum (List.rev (String.to_list (string_of_int startnum))) then acc @ [startnum] else acc)
  in
  range_helper startnum endnum []
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
