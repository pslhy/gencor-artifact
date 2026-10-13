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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
