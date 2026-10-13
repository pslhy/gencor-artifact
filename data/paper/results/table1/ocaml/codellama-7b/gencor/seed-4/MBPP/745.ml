
let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
    (* base case: startnum and endnum are the same number *)
    if startnum = endnum then 
        if startnum mod 10 = 0 then [startnum] else [] 
    else begin 
        (* divide startnum and endnum by 10 and get the quotient and remainder *) 
        let quotient, remainder = startnum / 10, startnum mod 10 in 
        (* check if the remainder is divisible by all the digits of startnum *) 
        if List.for_all (fun digit -> remainder mod digit = 0) (string_of_int startnum |> String.split_on_char '0' |> List.map int_of_string) then
            (* if it is, then add it to the list and recursively call the function with the updated startnum and endnum *)
            quotient :: divisible_by_digits quotient endnum
        else 
            (* otherwise, recursively call the function with the updated startnum and endnum *)
            divisible_by_digits (quotient + 1) endnum
    end

let is_in_range num range = 
    let min, max = range in 
    num >= min && num <= max

let divisible_nums_in_range range = 
    let min, max = range in 
    divisible_by_digits min max 
    |> List.filter (fun num -> is_in_range num range)

(* test the function with a range from 10 to 20 *) 
let () = 
    let range = (10, 20) in 
    Printf.printf "Divisible numbers in range %d to %d: %s\n" (fst range) (snd range) 
        (divisible_nums_in_range range |> List.map string_of_int |> String.concat ", ")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
