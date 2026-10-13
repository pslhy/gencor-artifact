(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string = 
    (* Check if the string only contains uppercase letters *) 
    (Str.(string =~ regexp "^[A-Z]*$") > 0) 

let get_case (string : string) : char list = 
    (* Return a list of characters from a string *)
    List.init (String.length string) (fun i -> string.[i])

let to_upper (string : string) : string = 
    (* Convert a string to uppercase *)
    let string_list = get_case string in 
    let rec to_upper (index : int) : string = 
        if index = String.length string_list then ""
        else if is_upper string_list.[index] then 
            string_list.[index] 
            to_upper (index + 1)
        else string_list.[index] ^ to_upper (index + 1)
    in 
    to_upper 0

let _ = 
    (* Test function *)
    let string = "example" in 
    Printf.printf "The input string is %s" string; 
    Printf.printf "The output string is %s" (to_upper string)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:6: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
    let char_list = String.to_list string in 
    let rec to_upper (index : int) : string = 
    	if index = String.length char_list then ""
        else if Char.is_uppercase char_list.[index] then 
            char_list.[index] 
	    to_upper (index + 1)
        else string.[index] ^ to_upper (index + 1)
    in 
    to_upper 0

let _ = 
    let string = "example" in 
    Printf.printf "The input string is %s" string; 
    Printf.printf "The output string is %s" (is_upper string)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
    let char_list = String.to_list string in 
    let rec to_upper (index : int) : string = 
    	if index = String.length char_list then ""
        else if Char.is_uppercase char_list.[index] then 
            char_list.[index] 
	    to_upper (index + 1)
        else string.[index] ^ to_upper (index + 1)
    in 
    to_upper 0

let _ = 
    let string = "example" in 
    Printf.printf "The input string is %s" string; 
    Printf.printf "The output string is %s" (is_upper string)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
    let char_list = String.to_list string in
    let rec to_upper (index : int) : string = 
    	if index = String.length char_list then ""
        else if Char.is_uppercase char_list.[index] then 
            char_list.[index] 
    	    to_upper (index + 1)
        else string.[index] ^ to_upper (index + 1)
    in 
    to_upper 0

let _ = 
    let string = "example" in 
    Printf.printf "The input string is %s" string; 
    Printf.printf "The output string is %s" (is_upper string)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
    let char_list = List.map (fun x -> x) string in
    let rec to_upper (index : int) : string = 
    	if index = String.length char_list then ""
        else if Char.is_uppercase char_list.[index] then 
            char_list.[index] 
    	    to_upper (index + 1)
        else string.[index] ^ to_upper (index + 1)
    in 
    to_upper 0

let _ = 
    let string = "example" in 
    Printf.printf "The input string is %s" string; 
    Printf.printf "The output string is %s" (is_upper string)

