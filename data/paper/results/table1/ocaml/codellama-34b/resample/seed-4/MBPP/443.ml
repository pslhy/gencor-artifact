(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
let rec largest_neg (list1 : int list) : int = 
    (* Declare and initialize a variable to hold the largest negative number*)
    let largest_num = ref 0 in 
    (* Iterate through the list and check if each element is negative and less than the current value of largest_num*)
    List.iter (fun x -> 
        if x < 0 && x > !largest_num then largest_num := x
    ); 
    (* Return the value of largest_num *)
    !largest_num


