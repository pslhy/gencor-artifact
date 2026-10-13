
let rec armstrong_number (number : int) : bool = 
    let rec sum_of_powers (n : int) (power : int) (acc : int) : int = 
        if n = 0 then acc 
        else sum_of_powers (n / 10) power (acc + (int_of_float (power. (float (n mod 10)) (float power))))
    in 
    let digits = ref 0 in
    let num = ref number in 
    while !num > 0 do 
        digits := !digits + 1;
        num := !num / 10;
    done;
    sum_of_powers number !digits 0 = number

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
