let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec check_divisible (num : int) (digit : int) : bool =
    if digit = 0 then (num mod 10) <> 0 && num mod (num mod 10) = 0
    else if num mod digit <> 0 then false
    else check_divisible num (digit / 10) in
  
  let rec loop (n : int) (res : int list) : int list =
    if n > endnum then res
    else if check_divisible n (n / 10) then loop (n + 1) (res @ [n])
    else loop (n + 1) res in
  
  loop startnum []
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
