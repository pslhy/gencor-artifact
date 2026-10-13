let rec fizz_buzz (n : int) : int =
    if n < 11 then 0
    else
        let count = if n mod 11 = 0 || n mod 13 = 0 then 1 else 0 in
        count + fizz_buzz (n-1)

let rec count_sevens (n : int) : int =
    if n = 0 then 0
    else 
        let count = if n mod 10 = 7 then 1 else 0 in
        count + count_sevens (n/10)

let fizz_buzz_sevens (n : int) : int =
    let nums = List.filter (fun x -> x mod 11 = 0 || x mod 13 = 0) (List.init n (fun x -> x+1)) in
    List.fold_left (+) 0 (List.map count_sevens nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
