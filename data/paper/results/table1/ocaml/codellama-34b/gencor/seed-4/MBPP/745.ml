
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
        (fun num -> List.for_all (fun digit -> num mod digit = 0) (num.
        (if divisible_numbers = [1] then
            List.filter (fun num -> num < 10) divisible_numbers
        else
            divisible_numbers))

(* test cases *)
(* TEST
let%test _ = divisible_by_digits 10 10 = [10]
let%test _ = divisible_by_digits 10 20 = [10, 20]
let%test _ = divisible_by_digits 10 30 = [10, 20, 30]
let%test _ = divisible_by_digits 10 40 = [10, 20, 30, 40]
let%test _ = divisible_by_digits 10 50 = [10, 20, 30, 40, 50]
let%test _ = divisible_by_digits 10 60 = [10, 20, 30, 40, 50, 60]
let%test _ = divisible_by_digits 10 70 = [10, 20, 30, 40, 50, 60, 70]
let%test _ = divisible_by_digits 10 80 = [10, 20, 30, 40, 50, 60, 70, 80]
let%test _ = divisible_by_digits 10 90 = [10, 20, 30, 40, 50, 60, 70, 80, 90]

(* TEST
let%test _ = find_range 10 20 = [10, 20]
let%test _ = find_range 10 30 = [10, 20, 30]
let%test _ = find_range 10 40 = [10, 20, 30, 40]
let%test _ = find_range 10 50 = [10, 20, 30, 40, 50]
let%test _ = find_range 10 60 = [10, 20, 30, 40, 50, 60]
let%test _ = find_range 10 70 = [10, 20, 30, 40, 50, 60, 70]
let%test _ = find_range 10 80 = [10, 20, 30, 40, 50, 60, 70, 80]
let%test _ = find_range 10 90 = [10, 20, 30, 40, 50, 60, 70, 80, 90]

let%test _ = find_range 100 200 = [100, 200]
let%test _ = find_range 100 300 = [100, 200, 300]
let%test _ = find_range 100 400 = [100, 200, 300, 400]
let%test _ = find_range 100 500 = [100, 200, 300, 400, 500]
let%test _ = find_range 100 600 = [100, 200, 300, 400, 500, 600]
let%test _ = find_range 100 700 = [100, 200, 300, 400, 500, 600, 700]
let%test _ = find_range 100 800 = [100, 200, 300, 400, 500, 600, 700, 800]
let%test _ = find_range 100 900 = [100, 200, 300, 400, 500, 600, 700, 800, 900]

let%test _ = find_range 1000 2000 = [1000, 2000]
let%test _ = find_range 1000 3000 = [1000, 2000, 3000]
let%test _ = find_range 1000 4000 = [1000, 2000, 3000, 4000]
let%test _ = find_range 1000 5000 = [1000, 2000, 3000, 4000, 5000]
let%test _ = find_range 1000 6000 = [1000, 2000, 3000, 4000, 5000, 6000]
let%test _ = find_range 1000 7000 = [1000, 2000,

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
