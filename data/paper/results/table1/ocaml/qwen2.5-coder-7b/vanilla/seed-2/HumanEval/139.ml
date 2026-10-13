let rec special_factorial (n : int) : int = 
    let rec factorial (k : int) : int = 
        if k <= 1 then 1 else k * factorial (k - 1)
    in 
    let rec product (i : int) (acc : int) : int =
        if i > n then acc else product (i + 1) (acc * factorial i)
    in 
    product 1 1

(* Test case *)
let () =
    Printf.printf "%d\n" (special_factorial 4);  (* Output: 288 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The Brazilian factorial is defined as: *)
(*     brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1! *)
(*     where n > 0 *)
(*     For example: *)
(*     >>> special_factorial 4 *)
(*     288 *)
(*     The function will receive an integer as input and should return the special *)
(*     factorial of this integer. *)
