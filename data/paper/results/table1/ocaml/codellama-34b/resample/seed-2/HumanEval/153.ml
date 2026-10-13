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
    | [] -> failwith "No extensions were provided"
    | extension :: _ when String.length extension > String.length class_name ->
        let uppercase = extension |> String.to_uppercase in
        let lowercase = extension |> String.to_lowercase in
        let strength = String.length uppercase - String.length lowercase in
        String.concat "." [class_name; extension]
    | _ -> failwith "All extensions must have a length greater than the class name"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:38: Unbound value "String.to_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> failwith "No extensions were provided"
    | extension :: _ when String.length extension > String.length class_name ->
        let uppercase = String.uppercase extension in
        let lowercase = String.lowercase extension in
        let strength = String.length uppercase - String.length lowercase in
        String.concat "." [class_name; extension]
    | _ -> failwith "All extensions must have a length greater than the class name"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strongest_Extension (class_name : string) (extensions : string list) : string =
    match extensions with
    | [] -> failwith "No extensions were provided"
    | extension :: _ when String.length extension > String.length class_name ->
        let uppercase = String.uppercase_ascii extension in
        let lowercase = String.lowercase_ascii extension in
        let strength = String.length uppercase - String.length lowercase in
        String.concat "." [class_name; extension]
    | _ -> failwith "All extensions must have a length greater than the class name"

