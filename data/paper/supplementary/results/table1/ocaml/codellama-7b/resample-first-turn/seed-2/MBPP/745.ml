let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  match startnum = endnum with
  | true -> [startnum]
  | false ->
      if divisible_by_digit startnum then
        startnum :: divisible_by_digits (startnum + 1) endnum
      else
        divisible_by_digits (startnum + 1) endnum in

and divisible_by_digit (num : int) : bool =
  match num = 0 with
  | true -> true
  | false ->
      let rec contains_digit (num : int) (digit : int) : bool =
        match num = 0 with
        | true -> false
        | false ->
            match num mod 10 = digit with
            | true -> true
            | false -> contains_digit (num / 10) digit in
      contains_digit num (num mod 10) in

let nums = divisible_by_digits 1 100 in
List.iter print_int nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
