let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
    (* Get the unit strength of each extension and its index in the list *)
    let exts_strength = List.mapi (fun i ext -> (ext, strength ext)) extensions in
    (* Filter list to keep only extensions with maximum strength *)
    let max_strength = List.fold_left (fun acc (ext, strength) -> 
        if acc < strength then strength else acc) 0 exts_strength in
    let strongest_extensions = List.filter (fun (ext, strength) -> 
        strength = max_strength) exts_strength in
    (* Return the class name followed by the name of the strongest extension *)
    class_name ^ "." ^ strongest_extensions.(0)

(* Helper function to calculate the strength of an extension *)
and strength (ext : string) : int = 
    let caps = List.length (String.filter (fun c -> c >= 'A' && c <= 'Z') ext) in
    let lower = List.length (String.filter (fun c -> c >= 'a' && c <= 'z') ext) in
    caps - lower


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
