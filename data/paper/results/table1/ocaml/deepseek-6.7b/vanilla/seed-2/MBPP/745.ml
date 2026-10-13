let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec check_digits num =
    match num with
    | 0 -> true
    | _ -> if (num mod (num mod 10)) = 0 then check_digits (num / 10) else false
  in
  let rec loop num =
    if num > endnum then []
    else if check_digits num then num :: loop (num + 1)
    else loop (num + 1)
  in
  loop startnum;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
