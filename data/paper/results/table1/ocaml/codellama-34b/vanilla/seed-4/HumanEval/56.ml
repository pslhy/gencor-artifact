let rec correct_bracketing (brackets : string) : bool = 
    (* Check if the bracket with the given index is correctly balanced *)
    let rec check_balance (brackets : string) (index : int) : bool = 
        (* Base case: we have reached the end of the string *)
        if index >= String.length brackets then 
            true 
        else 
            match brackets.[index] with
            | '<' -> 
                (* If we see an opening bracket, we need to find its matching closing bracket *)
                if index < String.length brackets - 1 && brackets.[index + 1] = '>' then 
                    check_balance brackets (index + 1)
                else 
                    false
            | '>' -> 
                (* If we see a closing bracket, we need to find its matching opening bracket *)
                if index > 0 && brackets.[index - 1] = '<' then 
                    check_balance brackets (index - 1)
                else 
                    false
            | _ -> 
                (* If we see any other character, it's not a bracket *)
                true
    in
    check_balance brackets 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "<" and ">". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "<" *)
(*     false *)
(*     >>> correct_bracketing "<>" *)
(*     true *)
(*     >>> correct_bracketing "<<><>>" *)
(*     true *)
(*     >>> correct_bracketing "><<>" *)
(*     false *)
