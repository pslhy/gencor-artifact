let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
    (* base case: startnum and endnum are the same *)
    if startnum = endnum then
        if startnum mod 10 = 0 then
            [ startnum ]
        else
            []
    (* recursive case: recurse down the range of numbers *)
    else
        divisible_by_digits startnum (endnum - 1)

let find_range (startnum : int) (endnum : int) : int list = 
    let divisible_numbers = divisible_by_digits startnum endnum in
    List.filter
        (fun num -> List.for_all (fun digit -> num mod digit = 0) (find_digits num))
        divisible_numbers

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
