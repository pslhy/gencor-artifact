(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
let rec text_starta_endb (text : string) : bool = 
    (*
     * This function takes a string and checks if it has an "a" followed by 
     * anything, ending in "b". 
     *
     * Example: "abc" returns true
     *          "abcd" returns true
     *          "a" returns false
     *          "b" returns false
     *          "cab" returns false
     *
     * Hint: The "pcre-ocaml" library has functions for regular expressions.
     *)
    if String.length text = 0 then false else
    let last_char = text.[String.length text - 1] in
    if last_char = 'b' then true else
    let rec aux i = 
        if i = String.length text - 1 then
            false
        else if text.[i] = 'a' then
            if text.[i + 1] = 'b' then
                true
            else
                aux (i + 1)
        else
            false
    in
    aux 0;;

(*
 * Test case 1: "abc" returns true
 * Test case 2: "abcd" returns true
 * Test case 3: "a" returns false
 * Test case 4: "b" returns false
 * Test case 5: "cab" returns false
 *)

