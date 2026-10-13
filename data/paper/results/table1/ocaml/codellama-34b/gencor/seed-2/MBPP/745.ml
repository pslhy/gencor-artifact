
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let divisible_by_digits' (x : int) : bool =
        let rec digits (y : int) : int list =
            match y with
            | 0 -> []
            | y -> y mod 10 :: digits (y / 10)
        in
        let rec divisible_by (z : int) (d : int list) : bool =
            match d with
            | [] -> true
            | dig :: _ when z mod dig <> 0 -> false
            | _ :: digs -> divisible_by_digits (z / 10) digs
        in
        divisible_by_digits x (digits x)
    in
    List.filter divisible_by_digits' [startnum - 1; startnum; startnum + 1]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
