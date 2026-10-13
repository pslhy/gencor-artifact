(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
let rec solve (s : string) : string =
    let rec solve' i (res : string) =
        if i < 0 then res
        else
            let c = String.get s i in
            let res = 
                if Char.is_alpha c then
                    if Char.is_lower c then String.make 1 (Char.uppercase c) ^ res
                    else String.make 1 (Char.lowercase c) ^ res
                else c ^ res 
            in
            solve' (i - 1) res 
    in 
    solve' (String.length s - 1) ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    let rec solve' i (res : string) =
        if i < 0 then res
        else
            let c = String.get s i in
            let res = 
                if Char.is_alpha c then
                    if Char.is_lowercase c then String.make 1 (Char.uppercase c) ^ res
                    else String.make 1 (Char.lowercase c) ^ res
                else c ^ res 
            in
            solve' (i - 1) res 
    in 
    solve' (String.length s - 1) ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    if not (String.exists Char.is_alpha s) then
        String.rev s
    else
        String.to_list s 
        |> List.map (fun c -> if Char.is_alpha c then Char.lowercase c |> Char.uppercase else c)
        |> List.map String.make
        |> String.concat ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:27: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    if not (String.exists Char.is_alpha s) then
        String.rev s
    else
        String.init (String.length s) (fun i -> 
            let c = String.get s i in
            if Char.is_alpha c then
                if Char.is_uppercase c then Char.lowercase c
                else Char.uppercase c
            else c
        )

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:27: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    if not (String.exists (fun c -> Char.code c |> Char.is_alpha) s) then
        String.rev s
    else
        String.init (String.length s) (fun i -> 
            let c = String.get s i in
            if Char.is_alpha c then
                if Char.is_lowercase c then Char.uppercase c
                else Char.lowercase c
            else c
        )

