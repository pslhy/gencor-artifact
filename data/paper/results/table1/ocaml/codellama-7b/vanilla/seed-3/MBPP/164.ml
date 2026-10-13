let rec are_equivalent (num1 : int) (num2 : int) : bool =
  if num1 = 0 || num2 = 0 then
    false
  else if num1 = 1 || num2 = 1 then
    true
  else if num1 = 2 || num2 = 2 || num1 = num2 then
    true
  else
    let divisors1 = num1 |> divisors |> List.filter (fun x -> x <= num2) in
    let divisors2 = num2 |> divisors |> List.filter (fun x -> x <= num1) in
    divisors1 = divisors2

and divisors (num : int) : int list =
  let rec div_helper (num : int) (i : int) (acc : int list) : int list =
    if i > num then
      acc
    else if num mod i = 0 then
      div_helper num (i + 1) (i :: acc)
    else
      div_helper num (i + 1) acc
  in
  num |> div_helper 1 [] |> List.sort (fun x y -> compare x y) |> List.filter (fun x -> x != num)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
