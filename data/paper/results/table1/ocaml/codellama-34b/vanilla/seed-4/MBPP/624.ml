let rec is_upper (string : string) : string = 
    (* Check if the string has all uppercase letters *)
    let rec loop (i : int) =
        if i < String.length string then
            if Char.code (String.get string i) < 65 || Char.code (String.get string i) > 90 then
                false
            else
                loop (i + 1)
        else
            true
    in
    loop 0

let convert_to_uppercase (str : string) : string =
    (* Convert a given string to uppercase *)
    str |> String.to_upper


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
