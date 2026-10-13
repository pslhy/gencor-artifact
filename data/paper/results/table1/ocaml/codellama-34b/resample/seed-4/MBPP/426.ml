(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
let rec filter_oddnumbers (nums : int list) : int list = 
    (* base case: empty list with no odd numbers *)
    let rec loop (nums : int list) : int list * bool = 
        (* base case: empty list with no odd numbers *)
        match nums with 
            | [] -> [], true
            | head :: tail ->
                (* check if head is odd *)
                if head mod 2 = 1 then
                    (* add head to resulting list *)
                    loop tail
                else
                    (* move to next element *)
                    loop tail
    in loop nums

