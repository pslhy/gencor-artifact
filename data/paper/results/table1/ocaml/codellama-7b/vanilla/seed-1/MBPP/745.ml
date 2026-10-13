let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let is_divisible_by_digit (num : int) (digit : int) : bool =
        num mod 10 = digit
    in
    let rec is_divisible_by_digits (num : int) (digits : int list) : bool =
        match digits with
        | [] -> true
        | digit :: digits' -> is_divisible_by_digit num digit && is_divisible_by_digits num digits'
    in
    let rec find_divisible_nums (startnum : int) (endnum : int) (nums : int list) : int list =
        match startnum > endnum with
        | true -> nums
        | false -> find_divisible_nums (startnum + 1) endnum (nums @ [startnum])
    in
    find_divisible_nums startnum endnum []
    |> List.filter (fun num -> is_divisible_by_digits num (string_of_int num |> List.map (fun digit -> int_of_char digit)))
    |> List.sort compare


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
