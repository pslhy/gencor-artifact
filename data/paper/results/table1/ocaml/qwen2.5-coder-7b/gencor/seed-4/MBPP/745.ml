
let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible_by_digits n = 
    let digits = ref [] in
    let mutablecopy = n in
    while mutablecopy > 0 do
      digits := (mutablecopy mod 10) :: !digits;
      mutablecopy <- mutablecopy / 10
    done;
    List.for_all ((<>) 0) !digits && List.for_all ((fun d -> n mod d = 0)) !digits
  in
  let rec find_divisible_numbers current = 
    if current > endnum then []
    else if is_divisible_by_digits current then current :: find_divisible_numbers (current + 1)
    else find_divisible_numbers (current + 1)
  in
  find_divisible_numbers startnum

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
