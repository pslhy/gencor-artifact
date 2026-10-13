(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You will be given the name of a class (a string) and a list of extensions. *)
(*     The extensions are to be used to load additional classes to the class. The *)
(*     strength of the extension is as follows: Let CAP be the number of the uppercase *)
(*     letters in the extension's name, and let SM be the number of lowercase letters *)
(*     in the extension's name, the strength is given by the fraction CAP - SM. *)
(*     You should find the strongest extension and return a string in this *)
(*     format: ClassName.StrongestExtensionName. *)
(*     If there are two or more extensions with the same strength, you should *)
(*     choose the one that comes first in the list. *)
(*     For example, if you are given "Slices" as the class and a list of the *)
(*     extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should *)
(*     return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension *)
(*     (its strength is -1). *)
(*     Example: *)
(*     >>> Strongest_Extension "my_class" ["AA"; "Be"; "CC"] *)
(*     "my_class.AA" *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.filter Char.is_uppercase h)) in
        let remaining_strength = strongest_Extension class_name t in
        let remaining_strength_val = (String.length remaining_strength) - (String.length (String.filter Char.is_uppercase remaining_strength)) in
        if strength > remaining_strength_val then class_name ^ "." ^ h else remaining_strength

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:60: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.filter Char.is_uppercase h)) in
        let remaining_strength = strongest_Extension class_name t in
        let remaining_strength_val = (String.length remaining_strength) - (String.length (String.filter Char.is_uppercase remaining_strength)) in
        if strength > remaining_strength_val then class_name ^ "." ^ h else remaining_strength

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:60: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.to_seq h |> Seq.filter Char.is_uppercase |> Seq.length)) in
        let remaining_strength = strongest_Extension class_name t in
        let remaining_strength_val = (String.length remaining_strength) - (String.length (String.to_seq remaining_strength |> Seq.filter Char.is_uppercase |> Seq.length)) in
        if strength > remaining_strength_val then class_name ^ "." ^ h else remaining_strength

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:90: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.to_seq h |> Seq.filter Char.is_uppercase |> Seq.length)) in
        let remaining_strength = strongest_Extension class_name t in
        let remaining_strength_val = (String.length remaining_strength) - (String.length (String.to_seq remaining_strength |> Seq.filter Char.is_uppercase |> Seq.length)) in
        if strength > remaining_strength_val then class_name ^ "." ^ h else remaining_strength

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:90: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> class_name ^ ".None"
    | h::t ->
        let strength = (String.length h) - (String.length (String.to_seq h |> Seq.filter (fun c -> c >= 'A' && c <= 'Z') |> Seq.length)) in
        let remaining_strength = strongest_Extension class_name t in
        let remaining_strength_val = (String.length remaining_strength) - (String.length (String.to_seq remaining_strength |> Seq.filter (fun c -> c >= 'A' && c <= 'Z') |> Seq.length)) in
        if strength > remaining_strength_val then class_name ^ "." ^ h else remaining_strength

