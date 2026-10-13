(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
    let str = string_of_int n in
    let freq = Hashtbl.create 10 in
    for i = 0 to String.length str - 1 do
        let c = Char.code str.[i] - Char.code '0' in
        if c >= 0 && c <= 9 then
            let count = try Hashtbl.find freq c with Not_found -> 0 in
            Hashtbl.replace freq c (count + 1)
    done;
    Hashtbl.for_all (fun k v -> v <= k) freq

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:5: Unbound value "Hashtbl.for_all" *)
(*     Hint: Did you mean "find_all"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    let str = string_of_int n in
    let freq = Hashtbl.create 10 in
    for i = 0 to String.length str - 1 do
        let c = Char.code str.[i] - Char.code '0' in
        if c >= 0 && c <= 9 then
            let count = try Hashtbl.find freq c with Not_found -> 0 in
            Hashtbl.replace freq c (count + 1)
    done;
    Hashtbl.find_all (fun k v -> v <= k) freq

