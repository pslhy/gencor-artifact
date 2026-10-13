(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
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
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:68: Unbound value "find_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    (* base case: startnum and endnum are the same *)
    if startnum = endnum then
        if startnum mod 10 = 0 then
            [ startnum ]
        else
            []
    (* recursive case: recurse down the range of numbers *)
    else
        let new_end = endnum - 1 in
        let new_val = startnum + 1 in
        if new_val <= new_end then
            (* add value to the list if it's divisible by all its digits *)
            if List.for_all (fun x -> new_val mod x = 0) (find_digits new_val) then
                new_val :: divisible_by_digits startnum new_end
            (* else, recurse on the next value *)
            else
                divisible_by_digits startnum new_end
        else
            (* if we've reached the end, return the list unchanged *)
            []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:59: Unbound value "find_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    (* base case: startnum and endnum are the same *)
    if startnum = endnum then
        if startnum mod 10 = 0 then
            [ startnum ]
        else
            []
    (* recursive case: recurse down the range of numbers *)
    else
        let new_end = endnum - 1 in
        let new_val = startnum + 1 in
        if new_val <= new_end then
            (* add value to the list if it's divisible by all its digits *)
            let digits = find_digits new_val in
            if List.for_all (fun x -> new_val mod x = 0) digits then
                new_val :: divisible_by_digits startnum new_end
            (* else, recurse on the next value *)
            else
                divisible_by_digits startnum new_end
        else
            (* if we've reached the end, return the list unchanged *)
            []

let find_digits (num : int) : int list =
    let rec loop n digits =
        if n = 0 then
            digits
        else
            loop (n / 10) (n mod 10 :: digits)
    in
    loop num []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:26: Unbound value "find_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    (* base case: startnum and endnum are the same *)
    if startnum = endnum then
        if startnum mod 10 = 0 then
            [ startnum ]
        else
            []
    (* recursive case: recurse down the range of numbers *)
    else
        let new_end = endnum - 1 in
        let new_val = startnum + 1 in
        if new_val <= new_end then
            (* add value to the list if it's divisible by all its digits *)
            let digits = find_digits new_val in
            if List.for_all (fun x -> new_val mod x = 0) digits then
                new_val :: divisible_by_digits startnum new_end
            (* else, recurse on the next value *)
            else
                divisible_by_digits startnum new_end
        else
            (* if we've reached the end, return the list unchanged *)
            []

let find_digits (num : int) : int list =
    let rec loop n digits =
        if n = 0 then
            digits
        else
            loop (n / 10) (n mod 10 :: digits)
    in
    loop num []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:26: Unbound value "find_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    (* base case: startnum and endnum are the same *)
    if startnum = endnum then
        if startnum mod 10 = 0 then
            [ startnum ]
        else
            []
    (* recursive case: recurse down the range of numbers *)
    else
        let new_end = endnum - 1 in
        let new_val = startnum + 1 in
        if new_val <= new_end then
            (* add value to the list if it's divisible by all its digits *)
            let digits = digits_of_int new_val in
            if List.for_all (fun x -> new_val mod x = 0) digits then
                new_val :: divisible_by_digits startnum new_end
            (* else, recurse on the next value *)
            else
                divisible_by_digits startnum new_end
        else
            (* if we've reached the end, return the list unchanged *)
            []

let digits_of_int (n : int) : int list =
    let rec loop (n : int) (acc : int list) : int list =
        if n = 0 then
            acc
        else
            loop (n / 10) (n mod 10 :: acc)
    in
    loop n []

