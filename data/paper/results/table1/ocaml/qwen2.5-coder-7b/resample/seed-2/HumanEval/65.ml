(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
let rec circular_shift (x : int) (shift : int) : string = 
    let str = string_of_int x in
    let len = String.length str in
    if shift > len then 
        String.rev str
    else 
        let shift = shift mod len in
        let left = String.sub str 0 (len - shift) in
        let right = String.sub str (len - shift) shift in
        right ^ left
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string = 
    let str = string_of_int x in
    let len = String.length str in
    if shift > len then 
        String.rev str
    else 
        let shift = shift mod len in
        let left = String.sub str 0 (len - shift) in
        let right = String.sub str (len - shift) shift in
        right ^ left

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string = 
    let str = string_of_int x in
    let len = String.length str in
    if shift > len then 
        List.rev (String.to_list str) |> String.of_list
    else 
        let shift = shift mod len in
        let left = String.sub str 0 (len - shift) in
        let right = String.sub str (len - shift) shift in
        right ^ left

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:42: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string = 
    let str = string_of_int x in
    let len = String.length str in
    if shift > len then 
        let chars = String.to_seq str |> Seq.rev |> Seq.to_list in
        Seq.vchars chars |> Seq.fold_left (fun acc c -> acc ^ (Char.escaped c)) ""
    else 
        let shift = shift mod len in
        let left = String.sub str 0 (len - shift) in
        let right = String.sub str (len - shift) shift in
        right ^ left

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:53: Unbound value "Seq.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string = 
    let str = string_of_int x in
    let len = String.length str in
    if shift > len then 
        let chars = ref [] in
        String.iter (fun c -> chars := c :: !chars) str;
        String.concat "" (List.rev !chars)
    else 
        let shift = shift mod len in
        let left = String.sub str 0 (len - shift) in
        let right = String.sub str (len - shift) shift in
        right ^ left

