let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec helper num divisor =
    if divisor = 0 then false
    else if num mod divisor = 0 then helper num (divisor - 1)
    else false
  in
  let rec loop (n : int) (res : int list) : int list = 
    if n > endnum then res
    else (
      let num_digits = String.length (string_of_int n) in
      if List.for_all (helper n) (List.init num_digits (fun i -> (string_of_int n).[i] |> Char.get_int - 48)) then
        loop (n + 1) (n :: res)
      else loop (n + 1) res
    )
  in
  List.rev (loop startnum [])



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
