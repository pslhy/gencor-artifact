let rec even_Power_Sum (n : int) : int = 
    (* base case: if n is <=0, return 0 *)
    if n <= 0 then 0
    else
        (* rec case: raise n to power of 5 and add to the sum of previous even numbers *)
        let rec loop(m) : int = 
            if m <= n then m^5 + loop(m+2)
            else 0
        in loop(2)
       
 
(* test *)
let result = even_Power_Sum(10);;
Printf.printf "The sum is: %d" result;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power. *)
