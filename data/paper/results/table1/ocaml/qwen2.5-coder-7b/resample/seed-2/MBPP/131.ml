(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
let rec reverse_vowels (str1 : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec find_next_vowel idx str =
        if idx >= String.length str then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_next_vowel (idx + 1) str
    in
    let rec find_prev_vowel idx str =
        if idx < 0 then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_prev_vowel (idx - 1) str
    in
    let rec replace_vowels i j acc str =
        if i >= j then acc
        else
            match find_next_vowel i str with
            | Some (i', v1) ->
                match find_prev_vowel j str with
                | Some (j', v2) ->
                    replace_vowels (i' + 1) (j' - 1) (String.set (String.set acc i' v2) j' v1) str
                | None -> acc
            | None -> acc
    in
    replace_vowels 0 (String.length str - 1) str str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:55: Unbound value "String.set" *)
(*     Hint: Did you mean "get"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let string_to_list s = List.of_seq (String.to_seq s) in
    let list_to_string lst = String.of_seq (Seq.of_list lst) in
    let rec find_next_vowel idx str =
        if idx >= String.length str then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_next_vowel (idx + 1) str
    in
    let rec find_prev_vowel idx str =
        if idx < 0 then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_prev_vowel (idx - 1) str
    in
    let rec replace_vowels i j acc str =
        if i >= j then acc
        else
            match find_next_vowel i str with
            | Some (i', v1) ->
                match find_prev_vowel j str with
                | Some (j', v2) ->
                    let newList = List.mapi (fun x c -> if x = i' then v2 else if x = j' then v1 else c) (string_to_list str) in
                    replace_vowels (i' + 1) (j' - 1) (list_to_string newList) str
                | None -> acc
            | None -> acc
    in
    replace_vowels 0 (String.length str1 - 1) str1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:45: Unbound value "Seq.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec find_next_vowel idx str =
        if idx >= String.length str then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_next_vowel (idx + 1) str
    in
    let rec find_prev_vowel idx str =
        if idx < 0 then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_prev_vowel (idx - 1) str
    in
    let rec replace_vowels i j acc str =
        if i >= j then acc
        else
            match find_next_vowel i str with
            | Some (i', v1) ->
                match find_prev_vowel j str with
                | Some (j', v2) ->
                    let newacc = Bytes.(of_string acc) in
                    Bytes.set newacc i' v2;
                    Bytes.set newacc j' v1;
                    replace_vowels (i' + 1) (j' - 1) (Bytes.to_string newacc) str
                | None -> acc
            | None -> acc
    in
    replace_vowels 0 (String.length str1 - 1) str1

