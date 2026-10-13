let rec strongest_Extension (class_name : string) (extensions : string list) : string = 
    let count_caps_and_lowers (s : string) : (int * int) =
        let rec helper (i : int) (caps : int) (lows : int) : (int * int) =
            if i >= String.length s then (caps, lows)
            else
                if s.[i] >= 'A' && s.[i] <= 'Z' then helper (i + 1) (caps + 1) lows
                else helper (i + 1) caps (lows + 1)
        in helper 0 0 0
    in
    let calculate_strength (s : string) : float =
        let (caps, lows) = count_caps_and_lowers s in
        float (caps - lows) /. float (String.length s)
    in
    let sort_extensions_by_strength (exts : string list) : string list =
        List.sort (fun a b -> 
            let diff = calculate_strength b -. calculate_strength a in
            if diff = 0.0 then compare a b else if diff > 0.0 then -1 else 1) exts
    in
    if List.length extensions = 0 then class_name
    else class_name ^ "." ^ (List.hd (sort_extensions_by_strength extensions))


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
