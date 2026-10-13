(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
    let is_Prime (x : int) : bool =
        let rec loop (t : int) : bool =
            if t <= 1 then true
            else if x mod t = 0 then false
            else loop (t - 1)
        in
        loop (x - 1)
    in
    let rec loop (count : int) (n : int) : int =
        if n <= 1 then count
        else if is_Prime n then loop (count + 1) (n - 1)
        else loop count (n - 1)
    in
    loop 0 n

