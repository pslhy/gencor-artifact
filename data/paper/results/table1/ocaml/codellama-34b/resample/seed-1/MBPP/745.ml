(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let rec aux num =
        let digits =
            Int.to_string num
            |> String.iter @@ fun c ->
                Int.of_string @@ Char.escaped c
        in
        List.for_all (fun div -> num mod div = 0) digits
    in
    match startnum, endnum with
    | _, endnum -> if aux startnum then startnum :: divisible_by_digits (startnum + 1) endnum else []
    | _, _ -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let rec aux num =
        let digits =
            Int.to_string num
            |> String.iter @@ fun c ->
                Int.to_string @@ Char.escaped c
        in
        List.for_all (fun div -> num mod div = 0) digits
    in
    match startnum, endnum with
    | _, endnum -> if aux startnum then startnum :: divisible_by_digits (startnum + 1) endnum else []
    | _, _ -> []

