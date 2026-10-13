
let rec is_woodall (x : int) : bool = 
    (* base case: x is less than 3 *)
    if x < 3 then false 
    (* recursive case: check if x ends in 3, 5, or 7 *)
    else if x mod 10 = 3 || x mod 10 = 5 || x mod 10 = 7 then 
        is_woodall (x / 10) 
    (* recursive case: check if x ends in 3, 5, or 7 and is a palindrome *)
    else if (is_woodall (x / 10)) && (x mod 10 = x / 10) then 
        true 
    else false

let main () =
    let num = input_line () |> int_of_string in
    if is_woodall num then print_endline "Yes" else print_endline "No"

let () = main ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
