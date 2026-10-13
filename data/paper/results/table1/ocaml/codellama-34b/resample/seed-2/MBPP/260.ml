(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
let rec newman_prime (n : int) : int =
    let is_prime (m : int) : bool =
        if m = 1 || m = 2 then true
        else (for i = 2 to int_of_float (sqrt (float_of_int m)) do
            if m mod i = 0 then false
        done; true) in
    if n = 1 then 3
    else if n = 2 then 7
    else if n = 3 then 43
    else if n = 4 then 1807
    else if n = 5 then 3217
    else newman_prime (n - 1) + 2 in
    let rec newman_shanks_williams (m : int) : int =
        let x = 1 + int_of_float (sqrt (float_of_int m)) in
        let y = x + (m - 1) / x in
        while not (is_prime y) do
            y = y + 1
        done;
        y in
    newman_shanks_williams (newman_prime n)

