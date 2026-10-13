let rec are_equivalent (num1 : int) (num2 : int) : bool =
  let divisors1 = num1 |> get_divisors |> List.length
  and divisors2 = num2 |> get_divisors |> List.length
  in divisors1 = divisors2

and get_divisors (input : int) : int list =
  let rec aux (input : int) (divisors : int list) : int list =
    match input with
    | 0 -> divisors
    | _ -> aux (input / 10) (input :: divisors)
  in aux input []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
