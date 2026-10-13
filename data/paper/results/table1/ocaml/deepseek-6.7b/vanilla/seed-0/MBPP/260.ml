let rec newman_prime (n : int) : int =
    let rec is_prime num =
        if num = 1 then false
        else if num = 2 then true
        else if num mod 2 = 0 then false
        else
            let rec check_divisor i =
                if i * i > num then true
                else if num mod i = 0 then false
                else check_divisor (i + 2)
            in
            check_divisor 3
    in
    let rec nth_prime counter num =
        if counter = n then num
        else if is_prime num then nth_prime (counter + 1) (num + 2)
        else nth_prime counter (num + 2)
    in
    nth_prime 0 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
