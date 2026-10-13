let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible n =
    let digits = String.map (fun c -> int_of_char c - int_of_char '0') (string_of_int n) in
    let rec check_divisibility digits =
      match digits with
      | [] -> true
      | d::ds -> if n mod d = 0 then check_divisibility ds else false
    in check_divisibility (List.filter (fun x -> x <> 0) digits)
  in
  let rec range_to_list current acc =
    if current > endnum then acc
    else if is_divisible current then range_to_list (current + 1) (current :: acc)
    else range_to_list (current + 1) acc
  in
  List.rev (range_to_list startnum [])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
