let rec is_lower (string : string) : string = 
    (* Check if the string only contains lowercase letters *) 
    (Str.(string =~ (regexp "?[a-v]$")).string
        
let to_lowercase (str : string) : string list = 
    (* Return a list of lowercase letters *) 
    List.init (String.length str) 
        ~f:(fun i -> if is_lower str.(i) then str.(i) else String.lowercase_ascii str.(i))

let main () = 
    (* Test code *) 
    let str = "Hi" in 
    let lowercase_str = to_lowercase str in 
    Printf.printf "%s" lowercase_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
